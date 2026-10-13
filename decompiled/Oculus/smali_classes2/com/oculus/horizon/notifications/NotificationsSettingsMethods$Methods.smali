.class interface abstract Lcom/oculus/horizon/notifications/NotificationsSettingsMethods$Methods;
.super Ljava/lang/Object;
.source "NotificationsSettingsMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/notifications/NotificationsSettingsMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Methods"
.end annotation


# virtual methods
.method public abstract getNotificationsPreferences(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/notifications/api/NotificationsSettingsResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/graphql"
    .end annotation
.end method

.method public abstract mutateNotificationsPreference(Ljava/lang/String;Lcom/oculus/horizon/notifications/NotificationsSettingsMutationParams;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/notifications/NotificationsSettingsMutationParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/notifications/NotificationsSettingsMutationParams;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method
