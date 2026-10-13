.class public Lcom/oculus/horizon/store/StoreSearchFragment$TypeaheadClickListener;
.super Ljava/lang/Object;
.source "StoreSearchFragment.java"

# interfaces
.implements Lcom/oculus/horizon/store/SearchTypeaheadQuery$TypeaheadClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/store/StoreSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeaheadClickListener"
.end annotation


# instance fields
.field private mSearchViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroidx/appcompat/widget/SearchView;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeaheadQueryWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/oculus/horizon/store/SearchTypeaheadQuery;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SearchView;Lcom/oculus/horizon/store/SearchTypeaheadQuery;)V
    .locals 1

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment$TypeaheadClickListener;->mSearchViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 278
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment$TypeaheadClickListener;->mTypeaheadQueryWeakReference:Ljava/lang/ref/WeakReference;

    .line 279
    return-void
.end method


# virtual methods
.method public onTypeaheadClick(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment$TypeaheadClickListener;->mSearchViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    .line 284
    if-eqz v0, :cond_0

    .line 285
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment$TypeaheadClickListener;->mTypeaheadQueryWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/SearchTypeaheadQuery;

    .line 288
    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {v0}, Lcom/oculus/horizon/store/SearchTypeaheadQuery;->dismissWindow()V

    .line 291
    :cond_1
    return-void
.end method
