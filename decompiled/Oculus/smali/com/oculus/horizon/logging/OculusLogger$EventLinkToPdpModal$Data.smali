.class public Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Data;
.super Ljava/lang/Object;
.source "OculusLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field public final mEventId:Ljava/lang/String;

.field public final mIsSubscribed:Z

.field public final mSource:Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Source;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Source;Z)V
    .locals 0

    .prologue
    .line 1694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1695
    iput-object p1, p0, Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Data;->mEventId:Ljava/lang/String;

    .line 1696
    iput-object p2, p0, Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Data;->mSource:Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Source;

    .line 1697
    iput-boolean p3, p0, Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Data;->mIsSubscribed:Z

    .line 1698
    return-void
.end method
