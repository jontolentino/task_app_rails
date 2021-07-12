categories = Category.create([
    {
        name: "School"
    },
    {
        name: "Work"
    },
    {
        name: "Avionschool"
    },
    {
        name: "Sidelines"
    },
    {
        name: "Grocery"
    }
])

tasks = Task.create([
    {
        name: "Math algebra assignment",
        category: categories.second,
        content: "Can it handle a million in one go is this the best we can do. You might wanna give it another shot could you move it a tad to the left will royalties in the company do instead of cash or can we try some other colours maybe"
    },
    {
        name: "Math exercise at page 12",
        category: categories.third,
        content: "Can it handle a million in one go is this the best we can do. You might wanna give it another shot could you move it a tad to the left will royalties in the company do instead of cash or can we try some other colours maybe"
    },
    {
        name: "Buy carrots 12 pieces",
        category: categories.fourth,
        content: "Can it handle a million in one go is this the best we can do. You might wanna give it another shot could you move it a tad to the left will royalties in the company do instead of cash or can we try some other colours maybe"
    },
    {
        name: "Buy 1/2 kilo brown sugar",
        category: categories.second,
        content: "Can it handle a million in one go is this the best we can do. You might wanna give it another shot could you move it a tad to the left will royalties in the company do instead of cash or can we try some other colours maybe"
    },
    {
        name: "add candy to grocery jar",
        category: categories.first,
        content: "Can it handle a million in one go is this the best we can do. You might wanna give it another shot could you move it a tad to the left will royalties in the company do instead of cash or can we try some other colours maybe"
    },
    {
        name: "ruby journal project",
        category: categories.first,
        content: "Can it handle a million in one go is this the best we can do. You might wanna give it another shot could you move it a tad to the left will royalties in the company do instead of cash or can we try some other colours maybe"
    },
    {
        name: "deploy rails to heroku",
        category: categories.third,
        content: "Can it handle a million in one go is this the best we can do. You might wanna give it another shot could you move it a tad to the left will royalties in the company do instead of cash or can we try some other colours maybe"
    },
    {
        name: "add users to task app",
        category: categories.second,
        content: "Can it handle a million in one go is this the best we can do. You might wanna give it another shot could you move it a tad to the left will royalties in the company do instead of cash or can we try some other colours maybe"
    }
])
