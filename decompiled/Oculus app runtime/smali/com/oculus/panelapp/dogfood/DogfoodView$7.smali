.class Lcom/oculus/panelapp/dogfood/DogfoodView$7;
.super Ljava/lang/Object;
.source "DogfoodView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/dogfood/DogfoodView;->setUpBottomBarButtons(Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/dogfood/DogfoodView;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$7;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 207
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$7;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-static {p1}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$100(Lcom/oculus/panelapp/dogfood/DogfoodView;)Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;

    move-result-object p1

    const-string v0, "update_button"

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->logAction(Ljava/lang/String;)V

    .line 208
    new-instance p1, Landroid/content/Intent;

    const-string v0, "ext_check_updates"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.oculus.updater"

    const-string v2, "com.oculus.updater.core.os.OSUpdateService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$7;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-static {v0}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$800(Lcom/oculus/panelapp/dogfood/DogfoodView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 212
    invoke-static {}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OTA Update Service launched"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$7;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    sget v0, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_primary_panel:I

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/dogfood/DogfoodView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$7;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    sget v0, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_update_ota_panel:I

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/dogfood/DogfoodView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 216
    invoke-static {}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to launch OTA service. Send \'cancel\' response."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    :goto_0
    invoke-static {}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SystemOTA dialog dismissed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
