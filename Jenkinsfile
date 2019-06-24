node {
    checkout scm

    docker.withRegistry('http://200.17.20.2:8083', 'nexusadmin') {

        def customImage = docker.build("200.17.20.2:8083/task02")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}
