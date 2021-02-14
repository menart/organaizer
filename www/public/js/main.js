const app = {}

const card = ``;

const groups = [
    {
        id: 1,
        parent: 0,
        title: 'Срочные'
    },
    {
        id: 2,
        parent: 0,
        title: 'Второстепенные'
    },
    {
        id: 3,
        parent: 0,
        title: 'Как-нибудь'
    }
];

Vue.createApp({
    data() {
        return {
            countGroup: 0,
            countTask: 0
        }
    }
}).mount('#app');