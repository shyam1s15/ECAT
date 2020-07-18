import React from 'react';
import 'react-native-gesture-handler';
import { View, Text } from 'react-native';
import { NavigationContainer } from '@react-navigation/native'
import { createStackNavigator } from '@react-navigation/stack';
import DashboardScreen from './src/Screens/Dashboard';
import McqListScreen from './src/Screens/McqList';
import SubjectScreen from './src/Screens/Subject';
import MaterialScreen from './src/Screens/Material';
import { McqProvider } from './src/Context/McqsContext';

const ScreenStack = createStackNavigator()

const App = () => {
  return (
    <McqProvider>
      <NavigationContainer>
        <ScreenStack.Navigator initialRouteName="Dashboard" screenOptions={{
          headerStyle: {
            backgroundColor: '#142850',
          },
          headerTintColor: '#fff',
          headerTitleStyle: {
            fontWeight: 'bold',
          },
          headerTitleAlign: 'center',
        }}>
          <ScreenStack.Screen name="Dashboard" component={DashboardScreen} />
          <ScreenStack.Screen name="Material" component={MaterialScreen} />
          <ScreenStack.Screen name="McqList" component={McqListScreen} />
          <ScreenStack.Screen name="Subject" component={SubjectScreen} />
        </ScreenStack.Navigator>
      </NavigationContainer>
    </McqProvider>
  )
}

export default App;
