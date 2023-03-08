<template>
    <div class="rulesContent">
        <div class="rulesTitle">{{ rulesTitle }}</div>
        <div class="rulesTextContent">
            <div v-for="rule in rules" class="ruleBox">
                <div class="rulesTextContentTitle">{{ rule.title }}</div>
                <div class="rulesTextContentText">{{ rule.text }}</div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: 'Rules',
        props: {
            rules: Array,
            rulesTitle: String,
        }
    }
</script>

<style scoped>
.rulesContent {
    width: 100%;
    height: 380px;
    background-color: var(--bg_color_opacity);
}

.rulesTitle {
    width: 100%;
    height: 45px;
    background-color: var(--bg_color);
    display: flex;
    align-items: center;
    color: white;
    border-bottom: 2px solid white;
    font-size: 24px;
    font-weight: 500;
    text-transform: uppercase;
    padding: 5px 30px;
    font-style: italic;
}

.rulesTextContent {
    width: 100%;
    height: 335px;
    margin: 0 auto;
    overflow: auto;
    padding: 20px 30px;
    box-shadow: inset -10px -10px 30px rgba(0, 0, 0, 0.3);
}
.ruleBox{
    margin-bottom: 24px;
}

.rulesTextContentTitle{
    font-size: 20px;
    color: white;
    font-weight: 500;
    text-transform: uppercase;
    border-left: 2px solid white;
    padding-left: 5px;
    margin-bottom: 10px;
}
.rulesTextContentText{
    color: rgba(255,255,255,0.6);
    padding-left: 10px;
}
</style>