.class final Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$8;
.super Landroid/content/AsyncQueryHandler;
.source "HorizonContentProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->fetchActivityCallback(Landroid/content/Context;Ljava/lang/String;ZLcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchSocialActivityCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchSocialActivityCallback;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchSocialActivityCallback;)V
    .locals 0

    .line 425
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$8;->val$cb:Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchSocialActivityCallback;

    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 434
    :try_start_0
    invoke-static {p3}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->access$400(Landroid/database/Cursor;)Lcom/oculus/panelapp/anytimeui/SocialActivityData;

    move-result-object p1

    .line 436
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$8;->val$cb:Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchSocialActivityCallback;

    invoke-virtual {p2, p1}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchSocialActivityCallback;->onSuccess(Lcom/oculus/panelapp/anytimeui/SocialActivityData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    .line 441
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 431
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$8;->val$cb:Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchSocialActivityCallback;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchSocialActivityCallback;->onError()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz p3, :cond_2

    .line 441
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1
.end method
