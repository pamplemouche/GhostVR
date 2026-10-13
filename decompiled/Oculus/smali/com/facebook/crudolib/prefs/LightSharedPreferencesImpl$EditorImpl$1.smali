.class Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl$1;
.super Ljava/lang/Object;
.source "LightSharedPreferencesImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->apply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;


# direct methods
.method constructor <init>(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl$1;->this$1:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl$1;->this$1:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;

    invoke-static {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->access$900(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;)Z

    .line 239
    return-void
.end method
