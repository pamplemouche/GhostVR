.class Lcom/oculus/platform/OVR$GetLoggedInUserCallable;
.super Ljava/lang/Object;
.source "OVR.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/platform/OVR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetLoggedInUserCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppId:Ljava/lang/String;

.field final synthetic this$0:Lcom/oculus/platform/OVR;


# direct methods
.method public constructor <init>(Lcom/oculus/platform/OVR;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/oculus/platform/OVR$GetLoggedInUserCallable;->this$0:Lcom/oculus/platform/OVR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1096
    iput-object p2, p0, Lcom/oculus/platform/OVR$GetLoggedInUserCallable;->mAppId:Ljava/lang/String;

    .line 1097
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1093
    invoke-virtual {p0}, Lcom/oculus/platform/OVR$GetLoggedInUserCallable;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/oculus/platform/OVR$GetLoggedInUserCallable;->this$0:Lcom/oculus/platform/OVR;

    new-instance v1, Lcom/oculus/platform/OVRProfile;

    iget-object v2, p0, Lcom/oculus/platform/OVR$GetLoggedInUserCallable;->this$0:Lcom/oculus/platform/OVR;

    invoke-static {v2}, Lcom/oculus/platform/OVR;->access$500(Lcom/oculus/platform/OVR;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/platform/OVR$GetLoggedInUserCallable;->mAppId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/oculus/platform/OVRProfile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/oculus/platform/OVR;->access$402(Lcom/oculus/platform/OVR;Lcom/oculus/platform/OVRProfile;)Lcom/oculus/platform/OVRProfile;

    .line 1102
    iget-object v0, p0, Lcom/oculus/platform/OVR$GetLoggedInUserCallable;->this$0:Lcom/oculus/platform/OVR;

    invoke-static {v0}, Lcom/oculus/platform/OVR;->access$400(Lcom/oculus/platform/OVR;)Lcom/oculus/platform/OVRProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/oculus/platform/OVRProfile;->id:Ljava/lang/String;

    return-object v0
.end method
