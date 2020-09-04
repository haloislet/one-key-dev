const { execSync } = require("child_process");
const fs = require('fs')

const output = execSync('system_profiler SPApplicationsDataType -json', {
    encoding: 'utf-8'
})

const softwareList = JSON.parse(output).SPApplicationsDataType

const notIncludeObtainList = ['apple', 'mac_app_store']

const notAppleAppListStr = softwareList
    .filter(software => software.path.startsWith('/Applications'))
    .filter(software => !notIncludeObtainList.includes(software.obtained_from))
    .map((software , index) => `${index}. ${software._name}`)
    .join('\n')


    fs.writeFileSync('./app-list.md', notAppleAppListStr)