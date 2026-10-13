.class Lcom/oculus/horizon/libraryui/SubLibraryAdapter$PopupHelper;
.super Ljava/lang/Object;
.source "SubLibraryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/libraryui/SubLibraryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PopupHelper"
.end annotation


# instance fields
.field private mApp:Lcom/oculus/library/model/App;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPopupAdapterPosition:I

.field private mPopupMenu:Lcom/oculus/horizon/widget/OculusPopupMenu;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    const/4 v0, -0x1

    iput v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$PopupHelper;->mPopupAdapterPosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/libraryui/SubLibraryAdapter$1;)V
    .locals 0

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$PopupHelper;-><init>()V

    return-void
.end method

.method private static containsAppByItemId(Lcom/google/common/collect/ImmutableList;Lcom/oculus/library/model/App;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;",
            "Lcom/oculus/library/model/App;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/App;

    .line 536
    iget-object v0, v0, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    const/4 v0, 0x1

    .line 540
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dismissPopupIfNeeded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 510
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$PopupHelper;->mPopupMenu:Lcom/oculus/horizon/widget/OculusPopupMenu;

    if-nez v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$PopupHelper;->mPopupMenu:Lcom/oculus/horizon/widget/OculusPopupMenu;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->dismiss()V

    .line 514
    iput-object v1, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$PopupHelper;->mPopupMenu:Lcom/oculus/horizon/widget/OculusPopupMenu;

    .line 515
    iput-object v1, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$PopupHelper;->mApp:Lcom/oculus/library/model/App;

    .line 516
    const/4 v0, -0x1

    iput v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$PopupHelper;->mPopupAdapterPosition:I

    goto :goto_0
.end method


# virtual methods
.method onBindViewHolder(Lcom/oculus/library/model/App;I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 544
    iget-object v2, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$PopupHelper;->mApp:Lcom/oculus/library/model/App;

    if-nez v2, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    iget-object v2, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$PopupHelper;->mApp:Lcom/oculus/library/model/App;

    iget-object v2, v2, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 550
    iget v2, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$PopupHelper;->mPopupAdapterPosition:I

    if-ne v2, p2, :cond_2

    move v2, v0

    .line 551
    :goto_1
    if-nez v2, :cond_3

    :goto_2
    if-ne v3, v0, :cond_0

    .line 552
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$PopupHelper;->dismissPopupIfNeeded()V

    goto :goto_0

    :cond_2
    move v2, v1

    .line 550
    goto :goto_1

    :cond_3
    move v0, v1

    .line 551
    goto :goto_2
.end method

.method setLibraryApps(Lcom/google/common/collect/ImmutableList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 529
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$PopupHelper;->mPopupMenu:Lcom/oculus/horizon/widget/OculusPopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$PopupHelper;->mApp:Lcom/oculus/library/model/App;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$PopupHelper;->mApp:Lcom/oculus/library/model/App;

    invoke-static {p1, v0}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$PopupHelper;->containsAppByItemId(Lcom/google/common/collect/ImmutableList;Lcom/oculus/library/model/App;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$PopupHelper;->dismissPopupIfNeeded()V

    .line 532
    :cond_0
    return-void
.end method

.method setPopup(Lcom/oculus/horizon/widget/OculusPopupMenu;Lcom/oculus/library/model/App;I)V
    .locals 0

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$PopupHelper;->dismissPopupIfNeeded()V

    .line 522
    iput-object p2, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$PopupHelper;->mApp:Lcom/oculus/library/model/App;

    .line 523
    iput p3, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$PopupHelper;->mPopupAdapterPosition:I

    .line 524
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$PopupHelper;->mPopupMenu:Lcom/oculus/horizon/widget/OculusPopupMenu;

    .line 525
    return-void
.end method
