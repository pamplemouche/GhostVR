.class public interface abstract Lcom/facebook/crudolib/prefs/LightSharedPreferences;
.super Ljava/lang/Object;
.source "LightSharedPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;,
        Lcom/facebook/crudolib/prefs/LightSharedPreferences$OnSharedPreferenceChangeListener;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# virtual methods
.method public abstract edit()Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getLong(Ljava/lang/String;J)J
.end method
