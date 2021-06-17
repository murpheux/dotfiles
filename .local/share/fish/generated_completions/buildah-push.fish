# buildah-push
# Autogenerated from man page /usr/lib/jvm/default/man/man1/buildah-push.1.gz
complete -c buildah-push -l all -d 'If specified image is a manifest list or image index, push the images in addi…'
complete -c buildah-push -l authfile -d 'Path of the authentication file'
complete -c buildah-push -l cert-dir -d 'Use certificates at path (*. crt, *. cert, *. key) to connect to the registry'
complete -c buildah-push -l creds -d 'The [username[:password]] to use to authenticate with the registry if required'
complete -c buildah-push -l digestfile -d 'After copying the image, write the digest of the resulting image to the file'
complete -c buildah-push -l disable-compression -s D -d 'Don\'t compress copies of filesystem layers which will be pushed'
complete -c buildah-push -l encryption-key -d 'The [protocol:keyfile] specifies the encryption protocol, which can be JWE (R…'
complete -c buildah-push -l encrypt-layer -d 'Layer(s) to encrypt: 0-indexed layer indices with support for negative indexi…'
complete -c buildah-push -l format -s f -d 'Manifest Type (oci, v2s2, or v2s1) to use when pushing an image'
complete -c buildah-push -l quiet -s q -d 'When writing the output image, suppress progress output'
complete -c buildah-push -l remove-signatures -d 'Don\'t copy signatures when pushing images'
complete -c buildah-push -l rm -d 'When pushing a the manifest list or image index, delete them from local stora…'
complete -c buildah-push -l sign-by -d 'Sign the pushed image using the GPG key that matches the specified fingerprint'
complete -c buildah-push -l tls-verify -d 'Require HTTPS and verification of certificates when talking to container regi…'

