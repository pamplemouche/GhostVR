.class interface abstract Lcom/oculus/horizon/settings/api/SettingsMethods$Methods;
.super Ljava/lang/Object;
.source "SettingsMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/settings/api/SettingsMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Methods"
.end annotation


# virtual methods
.method public abstract setPassword(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/api/fglogin/SetPasswordResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/reset_password_for_user"
    .end annotation
.end method
