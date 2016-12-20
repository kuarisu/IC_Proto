using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class GameManager_Score : MonoBehaviour {

    [SerializeField]
    Text m_ScoreText;
    [SerializeField]
    string m_ScoreString;

    [SerializeField]
    Text m_MultiplierText;
    [SerializeField]
    string m_MultiplierString;

    [SerializeField]
    float m_GeneralScore;
    float m_CurrentScore;
    float m_Multiplier;
    

    public static GameManager_Score Instance;
    private void Awake()
    {
        if (GameManager_Score.Instance != null)
        {
            Destroy(this.gameObject);
            return;
        }

        GameManager_Score.Instance = this;
        DontDestroyOnLoad(this.gameObject);
    }


    // Use this for initialization
    void Start () {
        m_GeneralScore = 0;
        m_CurrentScore = m_GeneralScore;
        m_ScoreText.text = m_ScoreString + " " + m_GeneralScore;
        m_MultiplierText.text = m_MultiplierString + " " + m_Multiplier;
    }

    void Update()
    {
        if (Input.GetKeyDown("a"))
            UpdateScore(100);

        if (Input.GetKeyDown("z"))
            IncreaseMultiplier(1);

        if (Input.GetKeyDown("e"))
            ResetMultiplier();


    }
	
	// Update is called once per frame
	public void UpdateScore(int _PointsAddedToScore)
    {
        m_CurrentScore += _PointsAddedToScore * m_Multiplier;
        m_GeneralScore = m_CurrentScore;
        ChangeTextScore();
    }

    public void IncreaseMultiplier(float _PointToInscreaseMultiplier)
    {
        m_Multiplier += _PointToInscreaseMultiplier;
        ChangeTextMultiplier();
    }

    public void ResetMultiplier()
    {
        m_Multiplier = 1;
        ChangeTextMultiplier();
    }

    void ChangeTextScore()
    {
        m_ScoreText.text = m_ScoreString + " " + m_GeneralScore;
    }

    void ChangeTextMultiplier()
    {
        m_MultiplierText.text = m_MultiplierString + " " + m_Multiplier;
    }
}
