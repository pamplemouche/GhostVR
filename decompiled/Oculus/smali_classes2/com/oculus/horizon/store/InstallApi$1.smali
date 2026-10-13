.class Lcom/oculus/horizon/store/InstallApi$1;
.super Ljava/lang/Object;
.source "InstallApi.java"

# interfaces
.implements Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/InstallApi;-><init>(Landroid/content/Context;Lcom/facebook/inject/Lazy;Lcom/oculus/libraryapi/OVRLibraryInternal;Lcom/oculus/horizon/store/StoresManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/InstallApi;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/InstallApi;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/oculus/horizon/store/InstallApi$1;->this$0:Lcom/oculus/horizon/store/InstallApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/oculus/horizon/store/InstallApi$1;->this$0:Lcom/oculus/horizon/store/InstallApi;

    invoke-static {v0}, Lcom/oculus/horizon/store/InstallApi;->access$000(Lcom/oculus/horizon/store/InstallApi;)Lcom/oculus/horizon/payments/CheckoutFlowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getState()Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    move-result-object v0

    .line 68
    sget-object v1, Lcom/oculus/horizon/store/InstallApi$2;->$SwitchMap$com$oculus$horizon$payments$CheckoutFlowModel$State:[I

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/store/InstallApi$1;->this$0:Lcom/oculus/horizon/store/InstallApi;

    iget-object v1, p0, Lcom/oculus/horizon/store/InstallApi$1;->this$0:Lcom/oculus/horizon/store/InstallApi;

    invoke-static {v1}, Lcom/oculus/horizon/store/InstallApi;->access$000(Lcom/oculus/horizon/store/InstallApi;)Lcom/oculus/horizon/payments/CheckoutFlowModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/store/InstallApi;->access$100(Lcom/oculus/horizon/store/InstallApi;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/store/InstallApi$1;->this$0:Lcom/oculus/horizon/store/InstallApi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/horizon/store/InstallApi;->access$202(Lcom/oculus/horizon/store/InstallApi;Z)Z

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
