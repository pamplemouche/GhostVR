.class public Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$PartyInviteActivity;
.super Ljava/lang/Object;
.source "GetPartyInfoWithActivityResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartyInviteActivity"
.end annotation


# instance fields
.field public application:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$Application;

.field public deeplink:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public image:Lcom/oculus/horizon/social/api/GetPartyInfoWithActivityResponse$ActivityImage;

.field public subtitle:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
