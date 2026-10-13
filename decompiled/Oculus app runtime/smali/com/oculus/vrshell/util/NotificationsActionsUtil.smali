.class public Lcom/oculus/vrshell/util/NotificationsActionsUtil;
.super Ljava/lang/Object;
.source "NotificationsActionsUtil.java"


# static fields
.field public static final ACCEPT_ACTION_TITLES:[Ljava/lang/String;

.field public static final ACCEPT_PARTY_INVITE_ACTION_TITLES:[Ljava/lang/String;

.field public static final CANCEL_DOWNLOAD_ACTION_TITLES:[Ljava/lang/String;

.field public static final DENY_ACTION_TITLES:[Ljava/lang/String;

.field public static final INVITE_CALL_ACTION_TITLES:[Ljava/lang/String;

.field public static final LAUNCH_APP_ACTION_TITLES:[Ljava/lang/String;

.field public static final RETRY_DOWNLOAD_ACTION_TITLES:[Ljava/lang/String;

.field public static final SEE_MORE_ACTION_TITLES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "accept"

    const-string v1, "ok"

    const-string v2, "allow"

    .line 8
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->ACCEPT_ACTION_TITLES:[Ljava/lang/String;

    const-string v0, "deny"

    const-string v1, "ignore"

    const-string v2, "dismiss"

    .line 10
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->DENY_ACTION_TITLES:[Ljava/lang/String;

    const-string v0, "invite"

    const-string v1, "call"

    .line 12
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->INVITE_CALL_ACTION_TITLES:[Ljava/lang/String;

    const-string v0, "see more"

    .line 14
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->SEE_MORE_ACTION_TITLES:[Ljava/lang/String;

    const-string v0, "cancel download"

    .line 16
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->CANCEL_DOWNLOAD_ACTION_TITLES:[Ljava/lang/String;

    const-string v0, "launch"

    .line 18
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->LAUNCH_APP_ACTION_TITLES:[Ljava/lang/String;

    const-string v0, "retry"

    .line 20
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->RETRY_DOWNLOAD_ACTION_TITLES:[Ljava/lang/String;

    const-string v0, "accept_party_invite"

    .line 22
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->ACCEPT_PARTY_INVITE_ACTION_TITLES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAcceptActionItem(Landroid/app/Notification$Action;)Z
    .locals 1

    .line 27
    sget-object v0, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->ACCEPT_ACTION_TITLES:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->isActionTitle([Ljava/lang/String;Landroid/app/Notification$Action;)Z

    move-result p0

    return p0
.end method

.method public static isAcceptPartyInviteActionItem(Landroid/app/Notification$Action;)Z
    .locals 1

    .line 67
    sget-object v0, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->ACCEPT_PARTY_INVITE_ACTION_TITLES:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->isActionTitle([Ljava/lang/String;Landroid/app/Notification$Action;)Z

    move-result p0

    return p0
.end method

.method private static isActionTitle([Ljava/lang/String;Landroid/app/Notification$Action;)Z
    .locals 5

    .line 75
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 76
    iget-object v4, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isCancelDownloadActionItem(Landroid/app/Notification$Action;)Z
    .locals 1

    .line 47
    sget-object v0, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->CANCEL_DOWNLOAD_ACTION_TITLES:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->isActionTitle([Ljava/lang/String;Landroid/app/Notification$Action;)Z

    move-result p0

    return p0
.end method

.method public static isDenyActionItem(Landroid/app/Notification$Action;)Z
    .locals 1

    .line 32
    sget-object v0, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->DENY_ACTION_TITLES:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->isActionTitle([Ljava/lang/String;Landroid/app/Notification$Action;)Z

    move-result p0

    return p0
.end method

.method public static isInviteActionItem(Landroid/app/Notification$Action;)Z
    .locals 1

    .line 37
    sget-object v0, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->INVITE_CALL_ACTION_TITLES:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->isActionTitle([Ljava/lang/String;Landroid/app/Notification$Action;)Z

    move-result p0

    return p0
.end method

.method public static isLaunchContentActionItem(Landroid/app/Notification$Action;)Z
    .locals 1

    .line 52
    sget-object v0, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->LAUNCH_APP_ACTION_TITLES:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->isActionTitle([Ljava/lang/String;Landroid/app/Notification$Action;)Z

    move-result p0

    return p0
.end method

.method public static isRetryDownloadActionItem(Landroid/app/Notification$Action;)Z
    .locals 1

    .line 57
    sget-object v0, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->RETRY_DOWNLOAD_ACTION_TITLES:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->isActionTitle([Ljava/lang/String;Landroid/app/Notification$Action;)Z

    move-result p0

    return p0
.end method

.method public static isSeeMoreActionItem(Landroid/app/Notification$Action;)Z
    .locals 1

    .line 42
    sget-object v0, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->SEE_MORE_ACTION_TITLES:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oculus/vrshell/util/NotificationsActionsUtil;->isActionTitle([Ljava/lang/String;Landroid/app/Notification$Action;)Z

    move-result p0

    return p0
.end method

.method public static shouldHideDismiss(Landroid/app/Notification;)Z
    .locals 2

    .line 62
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "hide_dismiss"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
