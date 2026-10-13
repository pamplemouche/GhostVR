.class public abstract Lcom/oculus/content/OculusPublicReadContentProvider;
.super Lcom/oculus/content/OculusFbPermissionsContentProvider;
.source "OculusPublicReadContentProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/oculus/content/OculusFbPermissionsContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCheckReadOnlyPermissions()Z
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    return v0
.end method
