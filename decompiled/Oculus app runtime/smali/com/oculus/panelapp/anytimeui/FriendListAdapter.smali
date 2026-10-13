.class public final Lcom/oculus/panelapp/anytimeui/FriendListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FriendListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/oculus/panelapp/anytimeui/FriendListRowData;",
        ">;"
    }
.end annotation


# static fields
.field private static final LAYOUT_RESOURCE_ID:I

.field private static final ROW_DEFAULT_DRAWABLE_ID:I

.field private static final ROW_SELECTED_COLOR_ID:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInviteClickListener:Lcom/oculus/panelapp/anytimeui/InviteClickListener;

.field private final mProfilePictureHelper:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

.field private mSelectedUIDs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUIDToFriendPosition:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->TAG:Ljava/lang/String;

    .line 28
    sget v0, Lcom/oculus/panelapp/anytimeui/R$layout;->social_friend_list_item_layout:I

    sput v0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->LAYOUT_RESOURCE_ID:I

    .line 30
    sget v0, Lcom/oculus/panelapp/anytimeui/R$color;->button_background_secondary_disabled:I

    sput v0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->ROW_SELECTED_COLOR_ID:I

    .line 31
    sget v0, Lcom/oculus/panelapp/anytimeui/R$drawable;->friend_list_row_clickable_background:I

    sput v0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->ROW_DEFAULT_DRAWABLE_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/anytimeui/FriendListRowData;",
            ">;)V"
        }
    .end annotation

    .line 35
    sget v0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->LAYOUT_RESOURCE_ID:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 36
    new-instance p2, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    invoke-direct {p2, p1}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->mProfilePictureHelper:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    .line 38
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->mUIDToFriendPosition:Ljava/util/HashMap;

    .line 39
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->mSelectedUIDs:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/FriendListAdapter;)Lcom/oculus/panelapp/anytimeui/InviteClickListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->mInviteClickListener:Lcom/oculus/panelapp/anytimeui/InviteClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/FriendListAdapter;)Ljava/util/HashSet;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->mSelectedUIDs:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/FriendListAdapter;Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;)Z
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->isInvitable(Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/anytimeui/FriendListAdapter;Landroid/view/View;ZZ)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->updateSelectionUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method private isInvitable(Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;)Z
    .locals 1

    .line 134
    sget-object v0, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;->INVITED:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;->JOINED:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private updateSelectionUI(Landroid/view/View;ZZ)V
    .locals 1

    .line 146
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->action_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-nez p3, :cond_0

    .line 148
    sget p2, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->ROW_DEFAULT_DRAWABLE_ID:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->ROW_SELECTED_COLOR_ID:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 156
    sget p1, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_add_to_party_hover:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 158
    :cond_1
    sget p2, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->ROW_DEFAULT_DRAWABLE_ID:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 159
    sget p1, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_add_to_party:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getFriendByID(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/FriendListRowData;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->mUIDToFriendPosition:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 59
    sget-object p1, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->TAG:Ljava/lang/String;

    const-string v0, "getFriendByID - mUIDToFriendPosition = null.  How did this happen?"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 62
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/oculus/panelapp/anytimeui/FriendListRowData;

    :goto_0
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 70
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 71
    sget v0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->LAYOUT_RESOURCE_ID:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 73
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/anytimeui/FriendListRowData;

    if-nez p1, :cond_0

    return-object p2

    .line 80
    :cond_0
    sget p3, Lcom/oculus/panelapp/anytimeui/R$id;->profile_picture:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->mProfilePictureHelper:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    iget-object v1, p1, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->profilePhotoURL:Ljava/lang/String;

    iget-object v2, p1, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->presenceStatus:Ljava/lang/String;

    const-string v3, "Offline"

    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 81
    invoke-virtual {v0, p3, v1, v2}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->setImageViewFromUrl(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 84
    sget p3, Lcom/oculus/panelapp/anytimeui/R$id;->display_name:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p1, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->displayName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    sget p3, Lcom/oculus/panelapp/anytimeui/R$id;->presence_status:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p1, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->presenceStatus:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    sget p3, Lcom/oculus/panelapp/anytimeui/R$id;->action_icon:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    .line 88
    sget-object v0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter$2;->$SwitchMap$com$oculus$provider$HorizonContent$FriendList$UserInviteState:[I

    iget-object v1, p1, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->inviteState:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    invoke-virtual {v1}, Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 96
    sget v0, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_add_to_party:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 93
    :cond_1
    sget v0, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_in_party:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 90
    :cond_2
    sget v0, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_party_invite_sent:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 101
    :goto_0
    iget-object p3, p1, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->inviteState:Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;

    invoke-direct {p0, p3}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->isInvitable(Lcom/oculus/provider/HorizonContent$FriendList$UserInviteState;)Z

    move-result p3

    .line 102
    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->mSelectedUIDs:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, p2, v0, p3}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->updateSelectionUI(Landroid/view/View;ZZ)V

    .line 107
    new-instance p3, Lcom/oculus/panelapp/anytimeui/FriendListAdapter$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter$1;-><init>(Lcom/oculus/panelapp/anytimeui/FriendListAdapter;Lcom/oculus/panelapp/anytimeui/FriendListRowData;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .line 44
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 46
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->mUIDToFriendPosition:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 48
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/panelapp/anytimeui/FriendListRowData;

    .line 49
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->mUIDToFriendPosition:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/oculus/panelapp/anytimeui/FriendListRowData;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setInviteClickListener(Lcom/oculus/panelapp/anytimeui/InviteClickListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/FriendListAdapter;->mInviteClickListener:Lcom/oculus/panelapp/anytimeui/InviteClickListener;

    return-void
.end method
