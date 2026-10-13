.class Lcom/oculus/platform/CoreAppAccessTokenFetcherModule$1$1;
.super Ljava/lang/Object;
.source "CoreAppAccessTokenFetcherModule.java"

# interfaces
.implements Lcom/oculus/platform/OVRServiceSynchronous$AidlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/CoreAppAccessTokenFetcherModule$1;->run()V
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
        "Lcom/oculus/platform/aidl/OVRServiceInterface;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/platform/CoreAppAccessTokenFetcherModule$1;


# direct methods
.method constructor <init>(Lcom/oculus/platform/CoreAppAccessTokenFetcherModule$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oculus/platform/CoreAppAccessTokenFetcherModule$1;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule$1$1;->this$1:Lcom/oculus/platform/CoreAppAccessTokenFetcherModule$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceFromBinder(Landroid/os/IBinder;)Lcom/oculus/platform/aidl/OVRServiceInterface;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 92
    invoke-static {p1}, Lcom/oculus/platform/aidl/OVRServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/platform/aidl/OVRServiceInterface;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serviceFromBinder(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule$1$1;->serviceFromBinder(Landroid/os/IBinder;)Lcom/oculus/platform/aidl/OVRServiceInterface;

    move-result-object v0

    return-object v0
.end method
