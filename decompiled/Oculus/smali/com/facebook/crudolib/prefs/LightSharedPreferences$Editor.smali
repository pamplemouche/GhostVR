.class public interface abstract Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;
.super Ljava/lang/Object;
.source "LightSharedPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/crudolib/prefs/LightSharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Editor"
.end annotation


# virtual methods
.method public abstract apply()V
.end method

.method public abstract clear()Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;
.end method

.method public abstract commit()Z
.end method

.method public abstract putInt(Ljava/lang/String;I)Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;
.end method

.method public abstract putLong(Ljava/lang/String;J)Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;
.end method

.method public abstract remove(Ljava/lang/String;)Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;
.end method
