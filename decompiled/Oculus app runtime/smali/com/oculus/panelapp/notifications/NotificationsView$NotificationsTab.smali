.class public final enum Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;
.super Ljava/lang/Enum;
.source "NotificationsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/notifications/NotificationsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationsTab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;

.field public static final enum ALL:Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;

.field public static final enum DOWNLOADS:Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;

.field public static final enum SOCIAL:Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;

.field public static final enum SYSTEM:Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;


# instance fields
.field private mContentId:I

.field private mEmptyId:I

.field private mLabelId:I

.field private mListId:I

.field private mTag:Ljava/lang/String;

.field private mType:Lcom/oculus/vrshell/notifications/NotificationsType;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 206
    new-instance v9, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;

    sget-object v4, Lcom/oculus/vrshell/notifications/NotificationsType;->ALL:Lcom/oculus/vrshell/notifications/NotificationsType;

    sget v5, Lcom/oculus/panelapp/notifications/R$string;->notifications_all_tab_text:I

    sget v6, Lcom/oculus/panelapp/notifications/R$id;->notifications_all_tab:I

    sget v7, Lcom/oculus/panelapp/notifications/R$id;->notifications_all_tab_list:I

    sget v8, Lcom/oculus/panelapp/notifications/R$id;->notifications_all_tab_empty:I

    const-string v1, "ALL"

    const/4 v2, 0x0

    const-string v3, "all"

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/oculus/vrshell/notifications/NotificationsType;IIII)V

    sput-object v9, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->ALL:Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;

    .line 213
    new-instance v0, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;

    sget-object v14, Lcom/oculus/vrshell/notifications/NotificationsType;->SOCIAL:Lcom/oculus/vrshell/notifications/NotificationsType;

    sget v15, Lcom/oculus/panelapp/notifications/R$string;->notifications_social_tab_text:I

    sget v16, Lcom/oculus/panelapp/notifications/R$id;->notifications_social_tab:I

    sget v17, Lcom/oculus/panelapp/notifications/R$id;->notifications_social_tab_list:I

    sget v18, Lcom/oculus/panelapp/notifications/R$id;->notifications_social_tab_empty:I

    const-string v11, "SOCIAL"

    const/4 v12, 0x1

    const-string v13, "social"

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/oculus/vrshell/notifications/NotificationsType;IIII)V

    sput-object v0, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->SOCIAL:Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;

    .line 220
    new-instance v0, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;

    sget-object v5, Lcom/oculus/vrshell/notifications/NotificationsType;->SYSTEM:Lcom/oculus/vrshell/notifications/NotificationsType;

    sget v6, Lcom/oculus/panelapp/notifications/R$string;->notifications_system_tab_text:I

    sget v7, Lcom/oculus/panelapp/notifications/R$id;->notifications_system_tab:I

    sget v8, Lcom/oculus/panelapp/notifications/R$id;->notifications_system_tab_list:I

    sget v9, Lcom/oculus/panelapp/notifications/R$id;->notifications_system_tab_empty:I

    const-string v2, "SYSTEM"

    const/4 v3, 0x2

    const-string v4, "system"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/oculus/vrshell/notifications/NotificationsType;IIII)V

    sput-object v0, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->SYSTEM:Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;

    .line 227
    new-instance v0, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;

    sget-object v14, Lcom/oculus/vrshell/notifications/NotificationsType;->DOWNLOADS:Lcom/oculus/vrshell/notifications/NotificationsType;

    sget v15, Lcom/oculus/panelapp/notifications/R$string;->notifications_downloads_tab_text:I

    sget v16, Lcom/oculus/panelapp/notifications/R$id;->notifications_downloads_tab:I

    sget v17, Lcom/oculus/panelapp/notifications/R$id;->notifications_downloads_tab_list:I

    sget v18, Lcom/oculus/panelapp/notifications/R$id;->notifications_downloads_tab_empty:I

    const-string v11, "DOWNLOADS"

    const/4 v12, 0x3

    const-string v13, "downloads"

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/oculus/vrshell/notifications/NotificationsType;IIII)V

    sput-object v0, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->DOWNLOADS:Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;

    const/4 v0, 0x4

    .line 205
    new-array v0, v0, [Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;

    sget-object v1, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->ALL:Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->SOCIAL:Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->SYSTEM:Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->DOWNLOADS:Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->$VALUES:[Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/oculus/vrshell/notifications/NotificationsType;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/vrshell/notifications/NotificationsType;",
            "IIII)V"
        }
    .end annotation

    .line 236
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 237
    iput-object p3, p0, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->mTag:Ljava/lang/String;

    .line 238
    iput-object p4, p0, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->mType:Lcom/oculus/vrshell/notifications/NotificationsType;

    .line 239
    iput p5, p0, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->mLabelId:I

    .line 240
    iput p6, p0, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->mContentId:I

    .line 241
    iput p7, p0, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->mListId:I

    .line 242
    iput p8, p0, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->mEmptyId:I

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;)Lcom/oculus/vrshell/notifications/NotificationsType;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->mType:Lcom/oculus/vrshell/notifications/NotificationsType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;
    .locals 1

    .line 205
    const-class v0, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;

    return-object p0
.end method

.method public static values()[Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;
    .locals 1

    .line 205
    sget-object v0, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->$VALUES:[Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;

    invoke-virtual {v0}, [Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;

    return-object v0
.end method


# virtual methods
.method public getContentId()I
    .locals 1

    .line 246
    iget v0, p0, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->mContentId:I

    return v0
.end method

.method public getEmptyId()I
    .locals 1

    .line 266
    iget v0, p0, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->mEmptyId:I

    return v0
.end method

.method public getLabelId()I
    .locals 1

    .line 258
    iget v0, p0, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->mLabelId:I

    return v0
.end method

.method public getListId()I
    .locals 1

    .line 262
    iget v0, p0, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->mListId:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getmType()Lcom/oculus/vrshell/notifications/NotificationsType;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/oculus/panelapp/notifications/NotificationsView$NotificationsTab;->mType:Lcom/oculus/vrshell/notifications/NotificationsType;

    return-object v0
.end method
