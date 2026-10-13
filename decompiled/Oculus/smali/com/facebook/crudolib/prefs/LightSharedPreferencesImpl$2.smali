.class Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$2;
.super Ljava/lang/Object;
.source "LightSharedPreferencesImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->notifyListeners(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$lastCommitCallStack:Ljava/lang/Throwable;

.field final synthetic val$listener:Lcom/facebook/crudolib/prefs/LightSharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method constructor <init>(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;Ljava/lang/Throwable;Lcom/facebook/crudolib/prefs/LightSharedPreferences$OnSharedPreferenceChangeListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$2;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    iput-object p2, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$2;->val$lastCommitCallStack:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$2;->val$listener:Lcom/facebook/crudolib/prefs/LightSharedPreferences$OnSharedPreferenceChangeListener;

    iput-object p4, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$2;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 510
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$2;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    iget-object v1, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$2;->val$lastCommitCallStack:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$1202(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 511
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$2;->val$listener:Lcom/facebook/crudolib/prefs/LightSharedPreferences$OnSharedPreferenceChangeListener;

    iget-object v1, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$2;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    iget-object v2, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$2;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/crudolib/prefs/LightSharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Lcom/facebook/crudolib/prefs/LightSharedPreferences;Ljava/lang/String;)V

    .line 512
    return-void
.end method
