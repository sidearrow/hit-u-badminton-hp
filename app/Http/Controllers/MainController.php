<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Services\MembersService;
use App\Http\Services\ResultsService;
use App\Http\Services\SantamaResultsService;

class MainController extends Controller
{
    public function index()
    {
        return view('pages.index');
    }

    public function members(MembersService $membersService)
    {
        $members = $membersService->getMembers();

        return view('pages.members', ['members' => $members]);
    }

    public function results(ResultsService $resultsService)
    {
        $results = $resultsService->getResults();
        return view('pages.results', [ 'results' => $results ]);
    }

    public function santama(SantamaResultsService $santamaResultsService)
    {
        $results = $santamaResultsService->get();

        return view('pages.santama', ['results' => $results]);
    }
}