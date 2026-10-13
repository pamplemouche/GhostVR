.class Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;
.super Ljava/lang/Object;
.source "GuardianDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogInfo"
.end annotation


# instance fields
.field private bodyId:Ljava/lang/String;

.field private btn1Id:Ljava/lang/String;

.field private btn1Return:Ljava/lang/String;

.field private btn1UsePrimaryStyle:Ljava/lang/Boolean;

.field private btn2Id:Ljava/lang/String;

.field private btn2Return:Ljava/lang/String;

.field private btn2UsePrimaryStyle:Ljava/lang/Boolean;

.field private btn3Id:Ljava/lang/String;

.field private btn3Return:Ljava/lang/String;

.field private btnBackReturn:Ljava/lang/String;

.field private hasVideo:Z

.field private reduceHeight:Z

.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

.field private titleId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->titleId:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->bodyId:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->btn1Id:Ljava/lang/String;

    .line 144
    iput-object p6, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->btn2Id:Ljava/lang/String;

    .line 145
    iput-object p8, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->btn3Id:Ljava/lang/String;

    .line 146
    iput-object p5, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->btn1Return:Ljava/lang/String;

    .line 147
    iput-object p7, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->btn2Return:Ljava/lang/String;

    .line 148
    iput-object p9, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->btn3Return:Ljava/lang/String;

    .line 149
    iput-object p10, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->btnBackReturn:Ljava/lang/String;

    .line 150
    iput-boolean p11, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->hasVideo:Z

    .line 151
    iput-boolean p12, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->reduceHeight:Z

    .line 152
    invoke-static {p13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->btn1UsePrimaryStyle:Ljava/lang/Boolean;

    .line 153
    invoke-static {p14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->btn2UsePrimaryStyle:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$1;)V
    .locals 0

    .line 107
    invoke-direct/range {p0 .. p14}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->titleId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->bodyId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->btn1Id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->btn1Return:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/Boolean;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->btn1UsePrimaryStyle:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->btn2Id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->btn2Return:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/Boolean;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->btn2UsePrimaryStyle:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->btn3Id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->btn3Return:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->btnBackReturn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->hasVideo:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->reduceHeight:Z

    return p0
.end method
