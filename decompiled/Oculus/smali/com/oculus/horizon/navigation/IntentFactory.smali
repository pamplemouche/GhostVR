.class public interface abstract Lcom/oculus/horizon/navigation/IntentFactory;
.super Ljava/lang/Object;
.source "IntentFactory.java"


# virtual methods
.method public abstract newLegalActivityIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method public abstract newPartyCallActivityIntent(Landroid/content/Context;Lcom/oculus/horizon/api/common/user/User;)Landroid/content/Intent;
.end method

.method public abstract newPartyCallNUXActivityIntent(Landroid/content/Context;Lcom/oculus/horizon/social/model/PrivacyState;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;
.end method

.method public abstract newStartActivityIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method
