import React, { useContext, useState } from 'react'
import { View, StyleSheet, Text } from 'react-native'
import { CheckBox, Button } from 'react-native-elements'
import { FlatList } from 'react-native-gesture-handler'
import McqContext from '../Context/McqsContext'

const MaterialScreen = () => {
    const { Mcqs, onCheck } = useContext(McqContext)
    const [selected, setSelected] = useState([])

    const getSelectedTopics = () => {
        const sl = []
        Mcqs.forEach(topic => topic.checked ? sl.push(topic.name) : null);
        setSelected(sl)
        console.log(selected)
    }

    return (
        <View>
            <FlatList
                data={Mcqs}
                keyExtractor={item => item.name}
                renderItem={({ item }) =>
                    < CheckBox
                        title={item.name}
                        checked={item.checked}
                        onPress={() => onCheck(item.name)}
                    />
                }
            />
            <Button buttonStyle={styles.btn} titleStyle={styles.title} title='Get MCQs' onPress={getSelectedTopics} />
            <FlatList
                data={selected}
                keyExtractor={item => item}
                renderItem={({ item }) => <Text>{item}</Text>}
            />
        </View>
    )
}

const styles = StyleSheet.create({
    btn: {
        marginHorizontal: 50,
        marginVertical: 15,
        borderRadius: 10,
        backgroundColor: 'green',
        height: 40,
    },
    title: {
        fontWeight: 'bold',
        color: 'white',
        fontSize: 20
    }
})

export default MaterialScreen