<template>
    <div class="reportBody">
        <div class="reportTitle">{{ reportTitle }}</div>
        <div class="reportInput"> 
            <textarea id="reportInput" :placeholder="this.placeholderText" :value="this.message"></textarea>
            <input type="text" id="titleInput" :placeholder="this.placeholderTitle" :value="this.title">
        </div>
    </div>
</template>

<script>
    export default{
        name: 'Report',
        props:{
            placeholderText: String,
            placeholderTitle: String,
            message: String,
            title: String,
            reportTitle: String,
        },
        mounted(){
            window.addEventListener('input', (event)=>{
                this.$emit('sendReportData', [document.getElementById("reportInput").value, document.getElementById("titleInput").value])
            });
        },
        emits: ['sendReportData']
    }
</script>

<style scoped>
.reportBody{
    width: 50%;
    height: 100%;
    background-color: var(--bg_color_opacity);
}

.reportTitle{
    width: 100%;
    height: 45px;
    background-color: var(--bg_color);
    color: white;
    padding: 5px 30px;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 24px;
    font-weight: 500;
    text-transform: uppercase;
    padding: 5px 30px;
    font-style: italic;
    border-bottom: 2px solid white;
}
.reportInput{
    position: relative;
    width: 100%;
    height: 310px;
}

textarea{
    width: 100%;
    height: 100%;
    background-color: transparent;
    outline: none;
    border: none;
    padding: 10px 30px;
    resize: none;
    color: white;
    font-weight: 500;
}
textarea::placeholder{
    color: rgba(255, 255, 255, 0.3);
    font-style: italic;
    font-size: 15px;
    text-align: left;
    font-weight: 400;
}

#titleInput{
    position: absolute;
    bottom: -5px;
    left: 0;
    width: 100%;
    height: fit-content;
    background-color: var(--bg_color_opacity);
    outline: none;
    border: none;
    padding: 10px 30px;
    resize: none;
    color: white;
    font-weight: 500;
    z-index: 1000;
    transition: 0.3s;
    font-size: 16px;
    text-align: center;
}
#titleInput::placeholder{
    font-size: 16px;
}
#titleInput:focus{
    box-shadow: inset 0px 0px 5px rgba(255, 255, 255, 0.1);
}
</style>