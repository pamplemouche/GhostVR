.class public Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "SocialProfileDialog.java"

# interfaces
.implements Lcom/oculus/panelapp/anytimeui/LocalUserInfoListener;
.implements Lcom/oculus/panelapp/anytimeui/PartyUpdateListener;


# static fields
.field public static final DIALOG_ICON_IMAGE_DIAMETER:I = 0x48

.field public static final DIALOG_ICON_IMAGE_PADDING:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDefaultProfilePicture:Landroid/graphics/Bitmap;

.field private mDialogLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

.field private final mProfilePictureHelper:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

.field private mRequestUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->TAG:Ljava/lang/String;

    const-string v0, "SocialProfileDialog dialog constructed"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance p2, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    invoke-direct {p2, p1}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->mProfilePictureHelper:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->dismissProfile()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;)Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->mProfilePictureHelper:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->mDialogLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;)Landroid/graphics/Bitmap;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->mDefaultProfilePicture:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private dismissProfile()V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const-string v1, "close"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method

.method private findAndUpdateUserIdProfile(Ljava/lang/String;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;",
            ">;)Z"
        }
    .end annotation

    .line 153
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;

    .line 154
    iget-object v1, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->userId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v3, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->alias:Ljava/lang/String;

    iget-object v4, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->displayName:Ljava/lang/String;

    iget-object v5, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->largeImageUrl:Ljava/lang/String;

    iget-object v6, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->avatarImageUrl:Ljava/lang/String;

    iget-object v7, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->presence:Ljava/lang/String;

    iget-boolean v8, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->online:Z

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->setProfileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private setProfileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .line 179
    invoke-static {p3}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_0

    .line 180
    iget-object p3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->mDialogLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    new-instance p6, Landroid/graphics/drawable/BitmapDrawable;

    .line 182
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->mProfilePictureHelper:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->mDefaultProfilePicture:Landroid/graphics/Bitmap;

    const/16 v3, 0x48

    const/4 v4, 0x4

    .line 183
    invoke-virtual {v1, v2, v3, v4}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->getRoundedImageBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p6, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 180
    invoke-virtual {p3, p6}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {}, Lcom/oculus/vrshell/panels/ImageLoader;->getInstance()Lcom/oculus/vrshell/panels/ImageLoader;

    move-result-object p6

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$2;

    invoke-direct {v0, p0, p3}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$2;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p6, p3, v0}, Lcom/oculus/vrshell/panels/ImageLoader;->loadImage(Ljava/lang/String;Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;)V

    .line 221
    :goto_0
    sget p3, Lcom/oculus/panelapp/anytimeui/R$id;->social_profile_avatar_picture:I

    .line 222
    invoke-virtual {p0, p3}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 223
    invoke-static {p4}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_1

    const/16 p4, 0x8

    .line 225
    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->getContext()Landroid/content/Context;

    move-result-object p6

    .line 228
    invoke-static {}, Lcom/oculus/vrshell/panels/ImageLoader;->getInstance()Lcom/oculus/vrshell/panels/ImageLoader;

    move-result-object v0

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3;

    invoke-direct {v1, p0, p6, p3, p4}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, p4, v1}, Lcom/oculus/vrshell/panels/ImageLoader;->loadImage(Ljava/lang/String;Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;)V

    .line 252
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    .line 253
    sget p3, Lcom/oculus/panelapp/anytimeui/R$id;->system_dialog_standard_layout_title:I

    invoke-virtual {p0, p3}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :cond_2
    sget p2, Lcom/oculus/panelapp/anytimeui/R$id;->social_profile_user_alias:I

    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 257
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-static {p5}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 260
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->social_profile_activity:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 261
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public configure(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->mRequestUserId:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "user"

    .line 76
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "self"

    if-eqz v1, :cond_0

    .line 78
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported URI: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'?user=<id>|self\' expected"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 83
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getLocalUserInfo()Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->setLocalUserInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;)V

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 93
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 94
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->system_dialog_standard_layout_button_accept:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getCurrentPartyInfo()Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;

    move-result-object p1

    .line 99
    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->mRequestUserId:Ljava/lang/String;

    .line 100
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->setPartyInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;)V

    .line 103
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->system_dialog_standard_layout_button_accept:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const/16 v0, 0x8

    .line 104
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 108
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->mDialogLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    invoke-virtual {p1, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setVisibility(I)V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 49
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->social_profile_dialog_layout:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->mDialogLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    .line 52
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->mDialogLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->mDialogLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$1;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;)V

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setOnCloseListener(Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;)V

    .line 68
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_social_default_profile:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->mDefaultProfilePicture:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onBackButton()Z
    .locals 1

    .line 113
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->dismissProfile()V

    const/4 v0, 0x1

    return v0
.end method

.method public setLocalUserInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;)V
    .locals 8

    .line 123
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->mRequestUserId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;->getUserAlias()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;->getUserName()Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    .line 130
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUILocalUserInfo;->getAvatarImageUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    .line 126
    invoke-direct/range {v1 .. v7}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->setProfileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setPartyInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->mRequestUserId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->findAndUpdateUserIdProfile(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->mRequestUserId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;->getInvitedUsers()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->findAndUpdateUserIdProfile(Ljava/lang/String;Ljava/util/List;)Z

    :cond_1
    return-void
.end method
