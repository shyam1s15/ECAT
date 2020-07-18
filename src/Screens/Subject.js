import React from 'react'
import { View, StyleSheet, Text, ScrollView, Image, TouchableWithoutFeedback, Pressable } from 'react-native'
import { ListItem, } from 'react-native-elements'

const Sub = ({ onPress, sub, chap }) => (
    <Pressable onPress={onPress}>
        <ListItem
            containerStyle={styles.box} title={sub} titleStyle={styles.title}
            chevron={<Image source={require('../../assests/chevron.png')} style={{ height: 25, width: 25 }} />}
            badge={{ value: `${chap} Chapters`, textStyle: { fontSize: 14 }, badgeStyle: { backgroundColor: 'grey', paddingVertical: 10, paddingHorizontal: 3 } }}
        />
    </Pressable>
)

const SubjectScreen = ({ navigation }) => {
    const onPress = () => navigation.navigate('Material')
    return (
        <ScrollView style={{ flex: 1, margin: 10 }}>
            <Sub onPress={onPress} sub='Maths' chap={5} />
            <Sub onPress={onPress} sub='English' chap={2} />
            <Sub onPress={onPress} sub='Social Science' chap={3} />
            <Sub onPress={onPress} sub='Science' chap={6} />
            <Sub onPress={onPress} sub='Hindi' chap={3} />
            <Sub onPress={onPress} sub='Gujarati' chap={5} />
        </ScrollView>
    )
}

const styles = StyleSheet.create({
    box: {
        margin: 10,
        height: 70,
        elevation: 5,
        borderRadius: 20,
        backgroundColor: 'white'
    },
    title: {
        fontSize: 20,
        fontWeight: "bold"
    }
})

export default SubjectScreen