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

.field public final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$OnChangeListener;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "listener"    # Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$OnChangeListener;

    .prologue
    .line 555
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 556
    iput-object p1, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$NuxPrefContentObserver;->mUri:Landroid/net/Uri;

    .line 557
    iput-object p2, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$NuxPrefContentObserver;->mListener:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$OnChangeListener;

    .line 558
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$NuxPrefContentObserver;->mListener:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$OnChangeListener;

    invoke-interface {v0}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$OnChangeListener;->onChange()V

    .line 563
    return-void
.end method
