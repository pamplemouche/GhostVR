.class final Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$5;
.super Landroid/content/AsyncQueryHandler;
.source "HorizonContentProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->fetchInvitableFriends(Landroid/content/Context;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchInvitableFriendsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchInvitableFriendsCallback;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchInvitableFriendsCallback;)V
    .locals 0

    .line 306
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$5;->val$cb:Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchInvitableFriendsCallback;

    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 314
    :try_start_0
    invoke-static {p3}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->access$200(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p1

    .line 315
    invoke-static {p3}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->access$300(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p2

    .line 317
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$5;->val$cb:Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchInvitableFriendsCallback;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchInvitableFriendsCallback;->onSuccess(Ljava/util/ArrayList;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 311
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$5;->val$cb:Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchInvitableFriendsCallback;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchInvitableFriendsCallback;->onError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_1

    .line 322
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :goto_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1
.end method
