.class public interface abstract Lcom/oculus/horizon/legacy/social/SocialManager$PrivacyListener;
.super Ljava/lang/Object;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PrivacyListener"
.end annotation


# virtual methods
.method public abstract onPrivacySet(Lcom/oculus/horizon/social/model/PrivacyConcept;Lcom/oculus/horizon/social/model/PrivacyState;)V
.end method

.method public abstract onPrivacySetError(Lcom/oculus/horizon/social/model/PrivacyConcept;Lcom/oculus/http/core/base/ApiError;)V
.end method
