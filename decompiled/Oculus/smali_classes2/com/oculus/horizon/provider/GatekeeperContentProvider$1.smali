.class final Lcom/oculus/horizon/provider/GatekeeperContentProvider$1;
.super Ljava/util/HashMap;
.source "GatekeeperContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/provider/GatekeeperContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 38
    const-string v0, "com.oculus.vrshell"

    const-string v1, "2.0.35"

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/provider/GatekeeperContentProvider$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v0, "com.oculus.vrshell.home"

    const-string v1, "3.16.0"

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/provider/GatekeeperContentProvider$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v0, "com.oculus.systemactivities"

    const-string v1, "1.14.3"

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/provider/GatekeeperContentProvider$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v0, "com.oculus.systemdriver"

    const-string v1, "1.6.3"

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/provider/GatekeeperContentProvider$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method
