import fs from "fs"
import { exec } from "child_process"
exec("pacman -Q",(err,data)=>{
    if (err) throw err
    let lis=data.trim().split("\n")
    let nw=lis.map(elem=>{
        if(elem.split(" ").length==2) return elem.split(" ")[0]
    });
    fs.writeFile("./packages.json",JSON.stringify(nw),(err)=>{if(err)throw err})
    console.log("Created packages.json");
})