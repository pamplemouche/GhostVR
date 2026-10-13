.class Lcom/oculus/platform/OVRServiceManager$1;
.super Ljava/lang/Object;
.source "OVRServiceManager.java"

# interfaces
.implements Lcom/oculus/platform/OVRServiceSynchronous$AidlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/OVRServiceManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/platform/OVRServiceSynchronous$AidlService",
        "<",
        "Lcom/oculus/aidl/OVRServiceInterface;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/OVRServiceManager;


# direct methods
.method constructor <init>(Lcom/oculus/platform/OVRServiceManager;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceManager$1;->this$0:Lcom/oculus/platform/OVRServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceFromBinder(Landroid/os/IBinder;)Lcom/oculus/aidl/OVRServiceInterface;
    .locals 1

    .prologue
    .line 132
    invoke-static {p1}, Lcom/oculus/aidl/OVRServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/aidl/OVRServiceInterface;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serviceFromBinder(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/oculus/platform/OVRServiceManager$1;->serviceFromBinder(Landroid/os/IBinder;)Lcom/oculus/aidl/OVRServiceInterface;

    move-result-object v0

    return-object v0
.end method
