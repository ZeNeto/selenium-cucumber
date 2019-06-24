node("docker") {
    docker.withRegistry('200.17.20.2:8083', 'admin') {

        git url: "https://github.com/ZeNeto/selenium-cucumber", credentialsId: 'joseneto0077@gmail.com'

        sh "git rev-parse HEAD > .git/commit-id"
        def commit_id = readFile('.git/commit-id').trim()
        println commit_id

        stage "build"
        def app = docker.build "task02"

        stage "publish"
        app.push 'master'
        app.push "${commit_id}"
    }
}
