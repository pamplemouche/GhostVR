.class Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$1;
.super Ljava/lang/Object;
.source "NotificationDeliveryStoreSharedPreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;->modifyPreference(Landroid/content/SharedPreferences$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$1;->this$0:Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    return-void
.end method
