.class public Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;
.super Ljava/lang/Object;
.source "AnytimeUIParty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Member"
.end annotation


# instance fields
.field public final alias:Ljava/lang/String;

.field public final avatarImageUrl:Ljava/lang/String;

.field public final displayName:Ljava/lang/String;

.field public final largeImageUrl:Ljava/lang/String;

.field public final online:Z

.field public final presence:Ljava/lang/String;

.field public final presenceAppId:Ljava/lang/String;

.field public final presenceAppPackageName:Ljava/lang/String;

.field public final presenceDeeplinkMessage:Ljava/lang/String;

.field public final smallImageUrl:Ljava/lang/String;

.field public final spawnLocation:Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$SpawnLocation;

.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;

.field public final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$SpawnLocation;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->userId:Ljava/lang/String;

    .line 117
    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->alias:Ljava/lang/String;

    .line 118
    iput-object p4, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->displayName:Ljava/lang/String;

    .line 119
    iput-object p5, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->presence:Ljava/lang/String;

    .line 120
    iput-object p6, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->presenceAppId:Ljava/lang/String;

    .line 121
    iput-object p7, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->presenceAppPackageName:Ljava/lang/String;

    .line 122
    iput-object p8, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->presenceDeeplinkMessage:Ljava/lang/String;

    .line 123
    iput-boolean p9, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->online:Z

    .line 124
    iput-object p10, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->largeImageUrl:Ljava/lang/String;

    .line 125
    iput-object p11, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->smallImageUrl:Ljava/lang/String;

    .line 126
    iput-object p12, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->avatarImageUrl:Ljava/lang/String;

    .line 127
    iput-object p13, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->spawnLocation:Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$SpawnLocation;

    return-void
.end method
