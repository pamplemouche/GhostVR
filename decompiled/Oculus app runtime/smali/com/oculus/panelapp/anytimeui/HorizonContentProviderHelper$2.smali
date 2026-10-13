.class final Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$2;
.super Landroid/content/AsyncQueryHandler;
.source "HorizonContentProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->inviteUsersToParty(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$MultipleIDCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$MultipleIDCallback;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$MultipleIDCallback;)V
    .locals 0

    .line 98
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$2;->val$cb:Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$MultipleIDCallback;

    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    .line 102
    check-cast p2, Ljava/util/List;

    .line 103
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$2;->val$cb:Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$MultipleIDCallback;

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$MultipleIDCallback;->onSuccess(Ljava/util/List;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$2;->val$cb:Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$MultipleIDCallback;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$MultipleIDCallback;->onError()V

    :goto_0
    return-void
.end method
