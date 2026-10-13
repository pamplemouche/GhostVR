.class public Lcom/oculus/horizon/notificationsFeed/api/RenderedNotificationResponse;
.super Ljava/lang/Object;
.source "RenderedNotificationResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation


# instance fields
.field public extra_data:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public message:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 24
    if-ne p0, p1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v0

    .line 28
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 29
    goto :goto_0

    .line 32
    :cond_3
    check-cast p1, Lcom/oculus/horizon/notificationsFeed/api/RenderedNotificationResponse;

    .line 34
    iget-object v2, p0, Lcom/oculus/horizon/notificationsFeed/api/RenderedNotificationResponse;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/horizon/notificationsFeed/api/RenderedNotificationResponse;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oculus/horizon/notificationsFeed/api/RenderedNotificationResponse;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/horizon/notificationsFeed/api/RenderedNotificationResponse;->message:Ljava/lang/String;

    .line 35
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oculus/horizon/notificationsFeed/api/RenderedNotificationResponse;->extra_data:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/horizon/notificationsFeed/api/RenderedNotificationResponse;->extra_data:Ljava/lang/String;

    .line 36
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oculus/horizon/notificationsFeed/api/RenderedNotificationResponse;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/oculus/horizon/notificationsFeed/api/RenderedNotificationResponse;->message:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/oculus/horizon/notificationsFeed/api/RenderedNotificationResponse;->extra_data:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
