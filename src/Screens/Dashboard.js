import React, { useState, useEffect } from 'react'
import { StyleSheet, View, Text, ScrollView, TouchableOpacity, Dimensions, Animated } from 'react-native'
import { Card } from 'react-native-elements'

let width = Dimensions.get('window').width;
let height = Dimensions.get('window').height;

const StdBox = ({ std, sub, clr, w, onStdPress }) => {
    return (
        <Card containerStyle={{ ...styles.shadowContainer, height: w, width: w }} >
            <TouchableOpacity onPress={onStdPress}>
                <View style={{ ...styles.innerItem, backgroundColor: `#${clr.back}`, height: w, width: w }} >
                    <View style={{ height: w, width: 10, backgroundColor: `#${clr.clr1}`, position: 'absolute' }} />
                    <Text style={{ marginLeft: 18, marginBottom: 15, fontSize: 18, fontWeight: '600', color: 'grey' }} > {sub} Subjects </Text>
                    <Text style={{ marginLeft: 15, fontSize: 25, fontWeight: 'bold', color: 'black' }}> Standard {std} </Text>
                </View>
            </TouchableOpacity>
        </Card>
    )
}

const DashboardScreen = ({ navigation }) => {

    const [boxWidth, setBoxWidth] = useState(height > width ? (width / 2) - 30 : (width / 4) - 30)

    useEffect(() => {
        Dimensions.addEventListener("change", setWidth);
        return () => {
            Dimensions.removeEventListener("change", setWidth);
        };
    });

    const setWidth = () => {
        width = Dimensions.get('window').width;
        height = Dimensions.get('window').height;
        setBoxWidth(height > width ? (width / 2) - 30 : (width / 4) - 25)
        console.log('called', height, ' ', width, ' ', boxWidth)
    }

    const randomRgb = () => {
        const red = Math.floor(Math.random() * 256);
        const green = Math.floor(Math.random() * 256);
        const blue = Math.floor(Math.random() * 256)

        const ob = { back: `rgba(${red}, ${green}, ${blue}, 0.25)`, clr1: `rgb(${red}, ${green}, ${blue})` }
        return ob
    }

    const onStdPress = () => {
        navigation.navigate('Subject')
    }

    return (
        <ScrollView>
            <View style={{ flex: 1, flexWrap: 'wrap', flexDirection: 'row', margin: 10, }}>
                <StdBox std={1} sub={3} clr={randomRgb()} w={boxWidth} onStdPress={onStdPress} />
                <StdBox std={2} sub={4} clr={randomRgb()} w={boxWidth} onStdPress={onStdPress} />
                <StdBox std={3} sub={3} clr={randomRgb()} w={boxWidth} onStdPress={onStdPress} />
                <StdBox std={4} sub={5} clr={randomRgb()} w={boxWidth} onStdPress={onStdPress} />
                <StdBox std={5} sub={6} clr={randomRgb()} w={boxWidth} onStdPress={onStdPress} />
                <StdBox std={6} sub={7} clr={randomRgb()} w={boxWidth} onStdPress={onStdPress} />
                <StdBox std={7} sub={7} clr={randomRgb()} w={boxWidth} onStdPress={onStdPress} />
                <StdBox std={8} sub={8} clr={randomRgb()} w={boxWidth} onStdPress={onStdPress} />
                <StdBox std={9} sub={8} clr={randomRgb()} w={boxWidth} onStdPress={onStdPress} />
            </View>
        </ScrollView>
    )
}

const styles = StyleSheet.create({

    container: {
        flex: 1,
        flexDirection: 'row',
        flexWrap: 'wrap',
        margin: 10,
    },
    shadowContainer: {
        elevation: 10,
        margin: 10,
        borderRadius: 20,
        alignItems: 'center', justifyContent: 'center'
    },
    innerItem: {
        backgroundColor: '#d2d0f4',
        borderRadius: 20,
        overflow: 'hidden',
        borderColor: '#B2B2B2',
        borderStartWidth: 1,
        borderRightWidth: 3.5,
        borderBottomWidth: 3.5,
        flexDirection: 'column-reverse',
    }
})

export default DashboardScreen