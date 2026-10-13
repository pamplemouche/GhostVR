.class public Lcom/oculus/browser/HydraApplication$4;
.super LlW;
.source "PG"


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/HydraApplication;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/HydraApplication;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/HydraApplication$4;->this$0:Lcom/oculus/browser/HydraApplication;

    invoke-direct {p0}, LlW;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/oculus/browser/HydraApplication$4;->doInBackground()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final doInBackground()Ljava/lang/Void;
    .locals 2

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/oculus/browser/OculusApplicationID;->get()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/oculus/browser/HydraApplication;->access$200(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
