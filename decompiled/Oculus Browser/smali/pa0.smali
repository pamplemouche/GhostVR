.class public interface abstract Lpa0;
.super Ljava/lang/Object;
.source "PG"


# virtual methods
.method public abstract applyWebappScopePolicyForUrl(Ljava/lang/String;)I
.end method

.method public abstract clobberCurrentTab(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract countSpecializedHandlers(Ljava/util/List;)I
.end method

.method public abstract getDefaultSmsPackageName()Ljava/lang/String;
.end method

.method public abstract getPreviousUrl()Ljava/lang/String;
.end method

.method public abstract isChromeAppInForeground()Z
.end method

.method public abstract isIntentForTrustedCallingApp(Landroid/content/Intent;)Z
.end method

.method public abstract isPdfDownload(Ljava/lang/String;)Z
.end method

.method public abstract isSerpReferrer()Z
.end method

.method public abstract isValidWebApk(Ljava/lang/String;)Z
.end method

.method public abstract maybeLaunchInstantApp(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract maybeRecordAppHandlersInIntent(Landroid/content/Intent;Ljava/util/List;)V
.end method

.method public abstract maybeSetWindowId(Landroid/content/Intent;)V
.end method

.method public abstract queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;
.end method

.method public abstract shouldRequestFileAccess(Ljava/lang/String;)Z
.end method

.method public abstract startActivity(Landroid/content/Intent;Z)V
.end method

.method public abstract startActivityIfNeeded(Landroid/content/Intent;Z)Z
.end method

.method public abstract startFileIntent(Landroid/content/Intent;Ljava/lang/String;Z)V
.end method

.method public abstract startIncognitoIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;ZZ)Z
.end method

.method public abstract willChromeHandleIntent(Landroid/content/Intent;)Z
.end method
