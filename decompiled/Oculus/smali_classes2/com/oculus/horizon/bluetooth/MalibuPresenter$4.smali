.class Lcom/oculus/horizon/bluetooth/MalibuPresenter$4;
.super Ljava/lang/Object;
.source "MalibuPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/bluetooth/MalibuPresenter;->verifyLocationIsOnOrScan(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/bluetooth/MalibuPresenter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/bluetooth/MalibuPresenter;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/MalibuPresenter$4;->this$0:Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    iput-object p2, p0, Lcom/oculus/horizon/bluetooth/MalibuPresenter$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuPresenter$4;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 197
    return-void
.end method
