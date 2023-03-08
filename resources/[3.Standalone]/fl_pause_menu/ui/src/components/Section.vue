<template>
    <div class="sectionContent">
        <div class="sectionHeader">
            <div class="title_name">{{ title }}</div>
        </div>
        <div class="content">
            {{ text }}
        </div>
    </div>
</template>

<script>
    export default{
        name: 'Section',
        props: {
            title: String,
            text: String,
            heightContent: Number,
        }
    }
</script>

<style scoped>
.sectionHeader{
    width: 100%;
    height: 45px;
    background-color: var(--bg_color);
    border-bottom: 2px solid white;
}
.content{
    width: 100%;
    height: 150px;
    background-color: var(--bg_color_opacity);
    padding: 10px 24px;
    color: rgba(255, 255, 255, 0.6);
    overflow: auto;
    box-shadow: inset -10px -10px 30px rgba(0, 0, 0, 0.3);
}
.sectionContent{
    width: 100%;
    height: fit-content;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
}
</style>