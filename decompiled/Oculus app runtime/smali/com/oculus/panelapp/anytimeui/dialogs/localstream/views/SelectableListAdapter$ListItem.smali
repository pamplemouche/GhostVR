.class public Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;
.super Ljava/lang/Object;
.source "SelectableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListItem"
.end annotation


# instance fields
.field private final mExtraId:Ljava/lang/String;

.field private final mImageResource:I

.field private final mTextPrimary:Ljava/lang/String;

.field private final mTextSecondary:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;->mImageResource:I

    .line 107
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;->mTextPrimary:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;->mTextSecondary:Ljava/lang/String;

    .line 109
    iput-object p4, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;->mExtraId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;)I
    .locals 0

    .line 91
    iget p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;->mImageResource:I

    return p0
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;)Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;->mTextPrimary:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;)Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;->mTextSecondary:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;)Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;->mExtraId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getExtraId()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ListItem;->mExtraId:Ljava/lang/String;

    return-object v0
.end method
