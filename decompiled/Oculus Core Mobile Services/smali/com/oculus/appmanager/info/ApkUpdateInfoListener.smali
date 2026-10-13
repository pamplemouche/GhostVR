.class public interface abstract Lcom/oculus/appmanager/info/ApkUpdateInfoListener;
.super Ljava/lang/Object;
.source "ApkUpdateInfoListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;
    }
.end annotation


# virtual methods
.method public abstract onChanged(Lcom/oculus/appmanager/info/ApkUpdateInfo;Ljava/util/Set;Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/appmanager/info/ApkUpdateInfo;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onCreated(Lcom/oculus/appmanager/info/ApkUpdateInfo;Lcom/oculus/appmanager/info/ApkUpdateInfoListener$CreationType;)V
.end method

.method public abstract onDeleted(Lcom/oculus/appmanager/info/ApkUpdateInfo;)V
.end method
