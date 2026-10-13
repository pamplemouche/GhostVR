.class final Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$1;
.super Landroid/content/AsyncQueryHandler;
.source "HorizonContentProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->createParty(Landroid/content/Context;Ljava/lang/String;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;)V
    .locals 0

    .line 54
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$1;->val$cb:Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;

    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0

    if-eqz p3, :cond_3

    .line 58
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "current_party_id"

    .line 63
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 64
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 66
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$1;->val$cb:Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;->onError()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    .line 75
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    .line 70
    :cond_2
    :try_start_1
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$1;->val$cb:Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;

    invoke-virtual {p2, p1}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;->onSuccess(Ljava/lang/String;)V

    if-eqz p3, :cond_5

    goto :goto_1

    .line 59
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$1;->val$cb:Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;->onError()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_4

    .line 75
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 72
    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$1;->val$cb:Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;->onError()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p3, :cond_5

    .line 75
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void

    :goto_2
    if-eqz p3, :cond_6

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p1
.end method
