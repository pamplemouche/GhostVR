.class public Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;
.super Ljava/lang/Object;
.source "GuardianDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogBuilder"
.end annotation


# instance fields
.field private bodyId:Ljava/lang/String;

.field private btn1Id:Ljava/lang/String;

.field private btn1Return:Ljava/lang/String;

.field private btn1UsePrimaryStyle:Z

.field private btn2Id:Ljava/lang/String;

.field private btn2Return:Ljava/lang/String;

.field private btn2UsePrimaryStyle:Z

.field private btn3Id:Ljava/lang/String;

.field private btn3Return:Ljava/lang/String;

.field private btnBackReturn:Ljava/lang/String;

.field private hasVideo:Z

.field private reduceHeight:Z

.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

.field private titleId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 158
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId:Ljava/lang/String;

    .line 159
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId:Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id:Ljava/lang/String;

    .line 161
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2Id:Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn3Id:Ljava/lang/String;

    .line 163
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return:Ljava/lang/String;

    .line 164
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2Return:Ljava/lang/String;

    .line 165
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn3Return:Ljava/lang/String;

    .line 166
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btnBackReturn:Ljava/lang/String;

    const/4 p1, 0x0

    .line 167
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->hasVideo:Z

    .line 168
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->reduceHeight:Z

    .line 169
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1UsePrimaryStyle:Z

    const/4 p1, 0x1

    .line 170
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2UsePrimaryStyle:Z

    return-void
.end method


# virtual methods
.method public bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId:Ljava/lang/String;

    return-object p0
.end method

.method public btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id:Ljava/lang/String;

    return-object p0
.end method

.method public btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return:Ljava/lang/String;

    return-object p0
.end method

.method public btn1UsePrimaryStyle(Ljava/lang/Boolean;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;
    .locals 0

    .line 247
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1UsePrimaryStyle:Z

    return-object p0
.end method

.method public btn2Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2Id:Ljava/lang/String;

    return-object p0
.end method

.method public btn2Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2Return:Ljava/lang/String;

    return-object p0
.end method

.method public btn2UsePrimaryStyle(Ljava/lang/Boolean;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;
    .locals 0

    .line 252
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2UsePrimaryStyle:Z

    return-object p0
.end method

.method public btn3Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn3Id:Ljava/lang/String;

    return-object p0
.end method

.method public btn3Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn3Return:Ljava/lang/String;

    return-object p0
.end method

.method public btnBackReturn(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btnBackReturn:Ljava/lang/String;

    return-object p0
.end method

.method public buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;
    .locals 18

    move-object/from16 v0, p0

    .line 175
    new-instance v17, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    iget-object v3, v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId:Ljava/lang/String;

    iget-object v4, v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId:Ljava/lang/String;

    iget-object v5, v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id:Ljava/lang/String;

    iget-object v6, v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return:Ljava/lang/String;

    iget-object v7, v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2Id:Ljava/lang/String;

    iget-object v8, v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2Return:Ljava/lang/String;

    iget-object v9, v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn3Id:Ljava/lang/String;

    iget-object v10, v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn3Return:Ljava/lang/String;

    iget-object v11, v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btnBackReturn:Ljava/lang/String;

    iget-boolean v12, v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->hasVideo:Z

    iget-boolean v13, v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->reduceHeight:Z

    iget-boolean v14, v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1UsePrimaryStyle:Z

    iget-boolean v15, v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2UsePrimaryStyle:Z

    const/16 v16, 0x0

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$1;)V

    return-object v17
.end method

.method public hasVideo(Z)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->hasVideo:Z

    return-object p0
.end method

.method public reduceHeight(Z)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;
    .locals 0

    .line 242
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->reduceHeight:Z

    return-object p0
.end method

.method public titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId:Ljava/lang/String;

    return-object p0
.end method
