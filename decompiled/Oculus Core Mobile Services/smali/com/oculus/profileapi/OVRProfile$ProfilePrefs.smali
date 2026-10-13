.class public Lcom/oculus/profileapi/OVRProfile$ProfilePrefs;
.super Ljava/lang/Object;
.source "OVRProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/profileapi/OVRProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfilePrefs"
.end annotation


# instance fields
.field public final isAutoUpdatesEnabled:Z

.field public final isLoggedIn:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean p1, p0, Lcom/oculus/profileapi/OVRProfile$ProfilePrefs;->isLoggedIn:Z

    .line 30
    iput-boolean p2, p0, Lcom/oculus/profileapi/OVRProfile$ProfilePrefs;->isAutoUpdatesEnabled:Z

    .line 31
    return-void
.end method
