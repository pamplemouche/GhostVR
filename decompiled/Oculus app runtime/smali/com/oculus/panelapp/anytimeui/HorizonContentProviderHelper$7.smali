.class final Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$7;
.super Landroid/content/AsyncQueryHandler;
.source "HorizonContentProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;->leaveParty(Landroid/content/Context;Ljava/lang/String;Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;)V
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

    .line 353
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$7;->val$cb:Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;

    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    .line 357
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$7;->val$cb:Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$7;->val$cb:Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;->onError()V

    :goto_0
    return-void
.end method
