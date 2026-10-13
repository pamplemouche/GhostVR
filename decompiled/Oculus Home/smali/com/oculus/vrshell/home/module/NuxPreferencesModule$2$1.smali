.class Lcom/oculus/vrshell/home/module/NuxPreferencesModule$2$1;
.super Ljava/lang/Object;
.source "NuxPreferencesModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/NuxPreferencesModule$2;->call()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/module/NuxPreferencesModule$2;

.field final synthetic val$finalPreferences:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/module/NuxPreferencesModule$2;Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/module/NuxPreferencesModule$2;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule$2$1;->this$0:Lcom/oculus/vrshell/home/module/NuxPreferencesModule$2;

    iput-object p2, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule$2$1;->val$finalPreferences:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 172
    sget-object v0, Lcom/oculus/vrshell/home/HomeApplication;->instance:Lcom/oculus/vrshell/home/HomeApplication;

    iget-object v1, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule$2$1;->val$finalPreferences:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;

    iget-object v1, v1, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->userID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/home/HomeApplication;->onUserId(Ljava/lang/String;)V

    .line 173
    return-void
.end method
