.class public interface abstract Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;
.super Ljava/lang/Object;
.source "IRtiSharedPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Editor"
.end annotation


# virtual methods
.method public abstract clear()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;
.end method

.method public abstract commit()V
.end method

.method public abstract putBoolean(Ljava/lang/String;Z)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;
.end method

.method public abstract putInt(Ljava/lang/String;I)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;
.end method

.method public abstract putLong(Ljava/lang/String;J)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;
.end method

.method public abstract putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;
.end method

.method public abstract remove(Ljava/lang/String;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;
.end method
