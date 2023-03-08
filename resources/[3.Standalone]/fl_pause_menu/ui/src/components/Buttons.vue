<template>
    <div class="button">
        <div class="btn_content">
            <div class="icon" v-if="icon_id==1">
                <span class="material-symbols-rounded">map</span>
            </div>
            <div class="icon" v-if="icon_id==2">
                <span class="material-symbols-rounded">settings</span>
            </div>
            <div class="icon" v-if="icon_id==3">
                <span class="material-symbols-rounded">resume</span>
            </div>
            <div class="icon" v-if="icon_id==4">
                <span class="material-symbols-rounded">power_rounded</span>
            </div>
            
            <div class="titles">
                <div class="title_main">{{ title_main }}</div>
                <div class="title_second">{{ title_second }}</div>
            </div>
        </div>
    </div>
</template>

<script>
    export default{
        name: 'Buttons',
        props: {
            title_main: String,
            title_second: String,
            icon_id: Number,
        }
    }
</script>

<style scoped>
.material-symbols-rounded {
    font-size: 50px;
    font-variation-settings:
    'FILL' 1,
    'wght' 400,
    'GRAD' 0,
    'opsz' 48
}
.button{
    width: 100%;
    height: 80px;
    background-color: var(--bg_color_opacity);
    padding: 10px;
    border-left: 3px solid white;
    box-shadow: inset 5px 0px 10px transparent;
    transition: 0.5s;
    cursor: pointer;
}
.button:hover{
    box-shadow: inset 5px 0px 10px rgba(255, 255, 255, 0.3);
}
.btn_content{
    width: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-direction: row;
    margin: 0 auto;
}
.icon{
    width: 25%;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 35px;
    color: white;
    text-shadow: 0px 0px 10px rgba(255, 255, 255, 0.3);
}
.titles{
    width: 70%;
    color: white;
}
.title_main{
    font-weight: 600;
    text-transform: uppercase;
}
.title_second{
    color: rgba(255, 255, 255, 0.6);
}
</style>