.class Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$NuxPrefContentObserver;
.super Landroid/database/ContentObserver;
.source "OVRNuxPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NuxPrefContentObserver"
.end annotation


# instance fields
.field public final mListener:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$OnChangeListener;


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$NuxPrefContentObserver;->mListener:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$OnChangeListener;

    invoke-interface {v0}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$OnChangeListener;->onChange()V

    .line 563
    return-void
.end method
