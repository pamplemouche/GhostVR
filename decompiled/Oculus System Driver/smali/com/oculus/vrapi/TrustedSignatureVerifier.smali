.class public Lcom/oculus/vrapi/TrustedSignatureVerifier;
.super Ljava/lang/Object;
.source "TrustedSignatureVerifier.java"


# static fields
.field private static final CHINA_VR_HOME_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.vr.home"

.field private static final OCULUS_HORIZON_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.horizon"

.field private static final OCULUS_SYSTEMUTILS_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.systemutilities"

.field private static final OCULUS_SYSTEMUX_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.systemux"

.field private static final OCULUS_VRSHELL_HOME_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.vrshell.home"

.field static final OCULUS_VRSHELL_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.vrshell"

.field private static final TAG:Ljava/lang/String; = "TrustedSignatureVerifier"

.field public static final TrustedSignedApps:[Ljava/lang/String;

.field private static mSignatureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "com.oculus.horizon"

    const-string v1, "com.oculus.vrshell"

    const-string v2, "com.oculus.systemux"

    const-string v3, "com.samsung.android.app.vr.home"

    const-string v4, "com.oculus.systemutilities"

    const-string v5, "com.oculus.vrshell.home"

    .line 41
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrapi/TrustedSignatureVerifier;->TrustedSignedApps:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GenerateSignatureMap()V
    .locals 3

    .line 53
    sget-object v0, Lcom/oculus/vrapi/TrustedSignatureVerifier;->mSignatureMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oculus/vrapi/TrustedSignatureVerifier;->mSignatureMap:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "DEBUG_SHA1"

    const-string v2, "Xo8WBi6jzSxKDVR4drqm84yr9iU"

    .line 65
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DEBUG_SHA256"

    const-string v2, "-sYXRdwJA3hvue3mKpYrOZ9zSPC7b4mbgzJmdZEDO5w"

    .line 66
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RELEASE_SHA1"

    const-string v2, "Sr9mhPKOEwo6NysnYn803dZ3UiY"

    .line 67
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RELEASE_SHA256"

    const-string v2, "ZSEpCPBvG4p97Oj7FYJ_pqcOLvWpiwfdZ4BcNkPF08M"

    .line 68
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 70
    sget-object v1, Lcom/oculus/vrapi/TrustedSignatureVerifier;->mSignatureMap:Ljava/util/Map;

    const-string v2, "com.oculus.horizon"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "DEBUG_SHA1"

    const-string v2, "Xo8WBi6jzSxKDVR4drqm84yr9iU"

    .line 73
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DEBUG_SHA256"

    const-string v2, "-sYXRdwJA3hvue3mKpYrOZ9zSPC7b4mbgzJmdZEDO5w"

    .line 74
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RELEASE_SHA1"

    const-string v2, "MxZgtt071YLz39PLrkVGckZooCE"

    .line 75
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RELEASE_SHA256"

    const-string v2, "3C-DTjwZQjeLFPB2yCzRq1nqZWa_9HMLIEfpjvyfna8"

    .line 76
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/oculus/vrapi/TrustedSignatureVerifier;->mSignatureMap:Ljava/util/Map;

    const-string v2, "com.oculus.vrshell"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "DEBUG_SHA1"

    const-string v2, "Xo8WBi6jzSxKDVR4drqm84yr9iU"

    .line 81
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DEBUG_SHA256"

    const-string v2, "-sYXRdwJA3hvue3mKpYrOZ9zSPC7b4mbgzJmdZEDO5w"

    .line 82
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RELEASE_SHA1"

    const-string v2, "mKGAnzw+eRcOXfgTW1AOz6Od8b4"

    .line 83
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RELEASE_SHA256"

    const-string v2, "AS+BZcGR7+j7DW1GBqpKusFNd9HZfVNAhgyfgQRaoVc"

    .line 84
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 86
    sget-object v1, Lcom/oculus/vrapi/TrustedSignatureVerifier;->mSignatureMap:Ljava/util/Map;

    const-string v2, "com.oculus.systemux"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "DEBUG_SHA1"

    const-string v2, "JxluOGuHXnat9wDn6oTkxu7jPfo"

    .line 89
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DEBUG_SHA256"

    const-string v2, "yKLpvM9ZfC-23Ga-4pP8E_L8R-x3vGsrDVLBH1EZKrg"

    .line 90
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RELEASE_SHA1"

    const-string v2, "nKUXDzgZGd_gRG_NqxixmhQ7MWM"

    .line 91
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RELEASE_SHA256"

    const-string v2, "NN8Oep8c8YkuRcBWtJc82BzPFIpAUNEa6krFpl-QCkI"

    .line 92
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 94
    sget-object v1, Lcom/oculus/vrapi/TrustedSignatureVerifier;->mSignatureMap:Ljava/util/Map;

    const-string v2, "com.samsung.android.app.vr.home"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "DEBUG_SHA1"

    const-string v2, "Xo8WBi6jzSxKDVR4drqm84yr9iU"

    .line 97
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DEBUG_SHA256"

    const-string v2, "-sYXRdwJA3hvue3mKpYrOZ9zSPC7b4mbgzJmdZEDO5w"

    .line 98
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RELEASE_SHA1"

    const-string v2, "MxZgtt071YLz39PLrkVGckZooCE"

    .line 99
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RELEASE_SHA256"

    const-string v2, "3C-DTjwZQjeLFPB2yCzRq1nqZWa_9HMLIEfpjvyfna8"

    .line 100
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 102
    sget-object v1, Lcom/oculus/vrapi/TrustedSignatureVerifier;->mSignatureMap:Ljava/util/Map;

    const-string v2, "com.oculus.systemutilities"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "DEBUG_SHA1"

    const-string v2, "Xo8WBi6jzSxKDVR4drqm84yr9iU"

    .line 105
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DEBUG_SHA256"

    const-string v2, "-sYXRdwJA3hvue3mKpYrOZ9zSPC7b4mbgzJmdZEDO5w"

    .line 106
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RELEASE_SHA1"

    const-string v2, "MxZgtt071YLz39PLrkVGckZooCE"

    .line 107
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RELEASE_SHA256"

    const-string v2, "3C-DTjwZQjeLFPB2yCzRq1nqZWa_9HMLIEfpjvyfna8"

    .line 108
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 110
    sget-object v1, Lcom/oculus/vrapi/TrustedSignatureVerifier;->mSignatureMap:Ljava/util/Map;

    const-string v2, "com.oculus.vrshell.home"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/oculus/vrapi/TrustedSignatureVerifier;->mSignatureMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrapi/TrustedSignatureVerifier;->mSignatureMap:Ljava/util/Map;

    return-void
.end method

.method public static isSignatureValid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .line 117
    invoke-static {p0, p1}, Lcom/oculus/vrapi/AppVerifier;->getRawSignature(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/Signature;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "TrustedSignatureVerifier"

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking app signature for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    const-string v3, "SHA-1"

    invoke-static {v2, v3}, Lcom/oculus/vrapi/HashHelper;->getBase64Hash([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    const-string v3, "SHA-256"

    invoke-static {v0, v3}, Lcom/oculus/vrapi/HashHelper;->getBase64Hash([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    sget-object v3, Lcom/oculus/vrapi/TrustedSignatureVerifier;->mSignatureMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 134
    invoke-static {p0}, Lcom/oculus/vrapi/VrApi;->isDeveloperMode(Landroid/content/Context;)Z

    move-result p0

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    const-string p0, "DEBUG_SHA1"

    .line 136
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "DEBUG_SHA256"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v3

    :cond_0
    const-string p0, "RELEASE_SHA1"

    .line 142
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "RELEASE_SHA256"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return v3

    :cond_1
    return v1

    :catch_0
    const-string p0, "TrustedSignatureVerifier"

    const-string p1, "Null pointer exception"

    .line 156
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_1
    const-string p0, "TrustedSignatureVerifier"

    const-string p1, "Couldn\'t verify app signature"

    .line 151
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
