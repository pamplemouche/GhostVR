.class Lcom/oculus/horizon/react/OculusReactActivity$1;
.super Lcom/oculus/horizon/react/OculusReactDelegate;
.source "OculusReactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/react/OculusReactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/react/OculusReactActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/react/OculusReactActivity;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/oculus/horizon/react/OculusReactActivity$1;->this$0:Lcom/oculus/horizon/react/OculusReactActivity;

    invoke-direct {p0}, Lcom/oculus/horizon/react/OculusReactDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public invokeBaseActivityBackPressed()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactActivity$1;->this$0:Lcom/oculus/horizon/react/OculusReactActivity;

    invoke-static {v0}, Lcom/oculus/horizon/react/OculusReactActivity;->access$001(Lcom/oculus/horizon/react/OculusReactActivity;)V

    .line 27
    return-void
.end method
