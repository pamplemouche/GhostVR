.class Lcom/oculus/vrapi/VrRuntimeClient$GuardianClientHandler;
.super Ljava/lang/Object;
.source "VrRuntimeClient.java"

# interfaces
.implements Lcom/oculus/vrguardianservice/VrGuardianClient$GuardianClientHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrapi/VrRuntimeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GuardianClientHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/vrapi/VrRuntimeClient$1;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/oculus/vrapi/VrRuntimeClient$GuardianClientHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public connected(I)V
    .locals 3

    const-string v0, "VrRuntimeClient"

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VrRuntimeClient: Connected to GuardianService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {p1}, Lcom/oculus/vrapi/VrRuntimeClient;->access$100(I)V

    return-void
.end method
